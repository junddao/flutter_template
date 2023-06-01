import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

class Repository {
  Future<List<Todo>> fetchTodos() async => [];
}

/// A mocked implementation of Repository that returns a pre-defined list of todos
class FakeRepository implements Repository {
  @override
  Future<List<Todo>> fetchTodos() async {
    return [
      Todo(id: '42', label: 'Hello world', completed: false),
    ];
  }
}

class Todo {
  Todo({
    required this.id,
    required this.label,
    required this.completed,
  });

  final String id;
  final String label;
  final bool completed;
}

// We expose our instance of Repository in a provider
final repositoryProvider = Provider((ref) => Repository());

/// The list of todos. Here, we are simply fetching them from the server using
/// [Repository] and doing nothing else.
final todoListProvider = FutureProvider((ref) async {
  // Obtains the Repository instance
  final repository = ref.read(repositoryProvider);

  // Fetch the todos and expose them to the UI.
  return repository.fetchTodos();
});

void main() {
  test('override repositoryProvider', () async {
    final container = ProviderContainer(
      overrides: [
        // Override the behavior of repositoryProvider to return
        // FakeRepository instead of Repository.
        repositoryProvider.overrideWithValue(FakeRepository())
        // We do not have to override `todoListProvider`, it will automatically
        // use the overridden repositoryProvider
      ],
    );

    // The first read if the loading state
    expect(
      container.read(todoListProvider),
      const AsyncValue<List<Todo>>.loading(),
    );

    /// Wait for the request to finish
    await container.read(todoListProvider.future);

    // Exposes the data fetched
    expect(container.read(todoListProvider).value, [
      isA<Todo>()
          .having((s) => s.id, 'id', '42')
          .having((s) => s.label, 'label', 'Hello world')
          .having((s) => s.completed, 'completed', false),
    ]);
  });
}
