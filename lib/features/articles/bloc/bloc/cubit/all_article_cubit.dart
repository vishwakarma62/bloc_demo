import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'all_article_state.dart';

class AllArticleCubit extends Cubit<AllArticleState> {
  AllArticleCubit() : super(AllArticleInitial());

  
}
