String formatTimeChat(String isoTime) {
  try {
    if (isoTime.isEmpty) return "Invalid Time";

    // Attempt to parse different possible formats
    DateTime dateTime;
    try {
      dateTime = DateTime.parse(isoTime).toLocal();
    } catch (e) {
      return "Invalid Time"; // Return a fallback value if parsing fails
    }

    // Extract the hour and minute
    int hour = dateTime.hour;
    int minute = dateTime.minute;

    // Determine AM or PM
    String period = hour >= 12 ? 'PM' : 'AM';

    // Convert hour to 12-hour format
    hour = hour % 12;
    hour = hour == 0 ? 12 : hour;

    // Format the time as "10:30 PM"
    String formattedTime = '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')} $period';

    return formattedTime;
  } catch (e) {
    return "Invalid Time"; // Handle unexpected errors
  }
}
