import 'package:bloc_demo/features/articles/model/allarticle_model.dart';

abstract class AllArticleRepo {
  Future<List<AllArticlesModel>> allarticlefetchdata();
  Future<dynamic> favourite();
  Future<dynamic> addfavourite(String _slug);
  Future<dynamic> unfavourite(String _slug);
  Future<dynamic> editArticle(AllArticlesModel _articlemodel, String _slug);
  Future<dynamic> deleteArticle(String _slug);
  Future<dynamic> createArticlebyslug(String _slug);
  Future<List<AllArticlesModel>> myarticle();
  Future<dynamic> favouritearticledata();

}