# Используем официальный образ Ruby 3.2.2
FROM ruby:3.2.2

# Устанавливаем зависимости
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# Устанавливаем рабочую директорию
WORKDIR /myapp

# Копируем Gemfile и Gemfile.lock в контейнер
COPY Gemfile* ./

# Устанавливаем Bundler версии 2.4.19
RUN gem install bundler:2.4.19

# Устанавливаем зависимости
RUN bundle install

# Копируем весь проект в контейнер
COPY . .

# Открываем порт 3000 для доступа к приложению
EXPOSE 3000

# Устанавливаем команду по умолчанию для запуска сервера
CMD ["bin/rails", "server", "-b", "0.0.0.0"]