import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infrastruture/repositories/video_post_repository_impl.dart';


class DiscoverProvider extends ChangeNotifier {
//TODO Repositorio y DataSources
  final VideoPostRepositoryImpl videoPostRepository;

  bool initialLoading = true;
  List<VideoPost>  videos = [];

  DiscoverProvider({required this.videoPostRepository});

  Future<void> loadNextPage() async {
    
   // await Future.delayed(const Duration(seconds: 2));
    
    
    /* videoPosts.map(
      (video) => LocalVideoModel.fromJson(video)
      .toVideoPostEntity()).toList();
 */
    final newVideos = await videoPostRepository.getTrendingVideosByPage(1);

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
  
}