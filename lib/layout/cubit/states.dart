abstract class NewStates{}

class NewsInitialState extends NewStates{}

class NewsBottomNavState extends NewStates{}

class NewsLoadingState extends NewStates{}

class NewsGetBusinessSuccessState extends NewStates{}

class NewsGetBusinessErrorState extends NewStates{
  final String error;
  NewsGetBusinessErrorState(this.error) ;
}