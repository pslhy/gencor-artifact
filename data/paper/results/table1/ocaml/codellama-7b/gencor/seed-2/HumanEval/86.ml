
let rec anti_shuffle (s : string) : string =
  match String.split_on_char s ' ' with
  | [] -> ""
  | h :: t ->
    let word = String.lowercase_ascii h in
    let first_letter_pos = ref 0 in
    let sorted_word =
      word |> String.to_seq |> List.of_seq
          |> List.sort compare
          |> String.of_seq in
    String.concat " "
      [ sorted_word ] @
      t |> List.rev |> List.map (fun word ->
        let word = String.lowercase_ascii word in
        let first_letter_pos = ref 0 in
        let sorted_word =
          word |> String.to_seq |> List.of_seq
              |> List.sort compare
              |> String.of_seq in
        String.sub ~pos_in: !first_letter_pos
            ~pos_out: !first_letter_pos ~string_of_int: String.of_seq sorted_word)
          |> List.rev |> List.concat |> String.concat " " in
    (String.concat " " [snd hypot = """

LOGGING=False

DB_CONNECTION_STRING = 'postgresql://gossipi:.$$@54.174.119.182:5432/gossipi'
DB_HOST = '54.174.119.182'
DB_NAME = 'gossipi'
DB_USER = 'gossipi'
DB_PASS = '$$'

TZ = 'Europe/Prague'
FRONTEND_URL = 'http://localhost:3000'

EMAIL_USERNAME = 'username'
EMAIL_PASSWORD = 'password'
EMAIL_SENDER = 'username@domain.com'

CELERY_BROKER_URL = 'redis://talkukca:$$@54.174.119.182:6379/0'
CELERY_BROKER_VHOST = 'talkukca'
CELERY_BROKER_CONNECTION_TIMEOUT = 0.2

CELERY_BEAT_SCHEDULE = {
    'subscribe_mail_broadcast': {
        'task': 'tasks.rss_feeds.RssFeedsCrawler',
        'schedule': crontab(minute='*/5'),
    },
    'cache_bookmarks': {
        'task': 'tasks.bookmarks.BookmarkParser',
        'schedule': crontab(min

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes a string and returns an ordered version of it. *)
(*     Ordered version of string, is a string where all words (separated by space) *)
(*     are replaced by a new word where all the characters arranged in *)
(*     ascending order based on ascii value. *)
(*     Note: You should keep the order of words and blank spaces in the sentence. *)
(*     For example: *)
(*     >>> anti_shuffle "Hi" *)
(*     "Hi" *)
(*     >>> anti_shuffle "hello" *)
(*     "ehllo" *)
(*     >>> anti_shuffle "Hello World!!!" *)
(*     "Hello !!!Wdlor" *)
