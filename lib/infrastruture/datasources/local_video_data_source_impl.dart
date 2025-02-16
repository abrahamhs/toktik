import 'package:toktik/domain/datasourses/video_post_datasourse.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infrastruture/models/local_video_model.dart';
import 'package:toktik/shared/data/local_video_post.dart';

class LocalVideoDataSource implements VideoPostDatasourse {
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    
    await Future.delayed(Duration(seconds: 2));

    final List<VideoPost> newVideos = 
    videoPosts.map((video) => 
    LocalVideoModel.fromJson(video).toVideoPostEntity()).toList();

    return newVideos;
    
  }
  
}