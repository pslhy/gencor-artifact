
let rec find_solution (a : int) (b : int) (n : int) :  int * int option = 
    match (find_solution a b (n-a)) with
    | (None, None) -> None
    | (x, Some y) -> Some(x, y)
    | (Some x, None) -> Some(x, n-x)

and find_solution a b n = 
    match (abs.
  
  (assert (fun () -> Some (-100, 100)) < (Some 100, -100)).
  
  (assert (fun () -> Some (-100, 100)) in_channel_length nan {
    valid_float_lexem=17736761985, 0xa02f361f8246ef4fLexing.

    contents/string_of_float/truncate"]
end

defimpl String.Chars,
  for: Timetable.Period.Time do
  alias Timetable.Time
  import Timetable.Helpers, only: [as_seconds: 1]

  @minute 60
  @hour @minute * 60

  def to_string(%Time{hour: hour, minute: minute}) do
    hour_seconds = as_seconds(hour, @hour)
    minute_seconds = as_seconds(minute, @minute)

    hours_minutes_seconds =
      hour_seconds + minute_seconds


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that returns integers x and y that satisfy ax + by = n as a tuple, or return None if no solution exists. *)
