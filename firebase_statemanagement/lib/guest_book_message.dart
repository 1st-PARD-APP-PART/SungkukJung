class GuestBookMessage {
  GuestBookMessage({
    required this.name,
    required this.message,
    required this.id,
    required this.timestamp,
  });

  final String name;
  final String message;
  final String id;
  final int timestamp;
}
