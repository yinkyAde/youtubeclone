
class Video {
  final String videoThumbnail;
  final String duration;
  final String profileImgUrl;
  final String title;
  final String channelName;
  final String views;
  final String date;

  const Video({
    required this.videoThumbnail,
    required this.duration,
    required this.profileImgUrl,
    required this.title,
    required this.channelName,
    required this.views,
    required this.date
  });
}


final List<Video> _allVideo = [

  const Video(
    videoThumbnail: 'https://images.unsplash.com/photo-1578133671540-edad0b3d689e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80',
    duration: '00:00',
    profileImgUrl: 'https://images.unsplash.com/photo-1578133671540-edad0b3d689e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80',
    title:'Youtube',
    channelName: 'YoutubeChannelName',
    views: '234k',
    date: 'yesterday'
  ),

];