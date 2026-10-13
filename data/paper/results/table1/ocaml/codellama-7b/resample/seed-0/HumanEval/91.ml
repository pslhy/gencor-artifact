(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     You'll be given a string of words, and your task is to count the number *)
(*     of boredoms. A boredom is a sentence that starts with the word "I". *)
(*     Sentences are delimited by '.', '?' or '!'. *)
(*     For example: *)
(*     >>> is_bored "Hello world" *)
(*     0 *)
(*     >>> is_bored "The sky is blue. The sun is shining. I love this weather" *)
(*     1 *)
let rec is_bored (s : string) : int =
  match s with
  | "" -> 0
  | '. ' | '? ' | '! ' -> 0
  | ('I ' | 'i ') :: _ -> 1 + is_bored (String.sub s 1 (String.length s - 1))
  | _ -> is_bored (String.sub s 1 (String.length s - 1))

let () =
  let input : string = read_line () in
  print_int (is_bored input)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_bored (s : string) : int =
  match s with
  | "" -> 0
  | '. ' | '? ' | '! ' -> 0
  | ('I ' | 'i ') :: _ -> 1 + is_bored (String.sub s 1 (String.length s - 1))
  | _ -> is_bored (String.sub s 1 (String.length s - 1))

let () =
  let test_cases : (string * int) list =
    [ ("I am bored", 1);
      ("I love this weather.", 1);
      ("I’ve been bored for weeks.", 1);
      ("Why am I burdened with this weight?", 1);
      ("", 0);
      ("Hello world", 0);
      ("I am reading a book", 1);
      ("I’m watching a boring movie.", 1);
      ("I’ve been staring at this sheet of paper for hours", 1);
      ("I’m tired of playing video games", 1)]
  in
  let rec check_boredom (test_cases : (string * int) list) : unit =
    match test_cases with
    | [] -> ()
    | (s, expected) :: test_cases ->
        if expected <> is_bored s then
          Printf.printf "Test Failed: %s (expected %d, got %d)\n" s expected (is_bored s)
        else
          Printf.printf "Test Passed: %s\n" s;
        check_boredom test_cases
  in
  check_boredom test_cases

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_bored (s : string) : int =
  match s with
  | "" -> 0
  | '. ' | '? ' | '! ' -> 0
  | ('I ' | 'i ') :: _ -> 1 + is_bored (String.sub s 1 (String.length s - 1))
  | _ -> is_bored (String.sub s 1 (String.length s - 1))

let () =
  let test_cases : (string * int) list =
    [("I am bored", 1);
      ("I love this weather.", 1);
      ("I’ve been bored for weeks.", 1);
      ("Why am I burdened with this weight?", 1);
      ("", 0);
      ("Hello world", 0);
      ("I am reading a book", 1);
      ("I’m watching a boring movie.", 1);
      ("I’ve been staring at this sheet of paper for hours", 1);
      ("I’m tired of playing video games", 1)]
  in
  let rec check_boredom (test_cases : (string * int) list) : unit =
    match test_cases with
    | [] -> ()
    | (s, expected) :: test_cases ->
        if expected <> is_bored s then
          Printf.printf "Test Failed: %s (expected %d, got %d)\n" s expected (is_bored s)
        else
          Printf.printf "Test Passed: %s\n" s;
        check_boredom test_cases
  in
  check_boredom test_cases

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_bored (s : string) : int =
  match s with
  | "" -> 0
  | _ -> 1

let () =
  let test_cases : (string * int) list =
    [("I am bored", 1);
      ("I love this weather.", 1);
      ("I’ve been bored for weeks.", 1);
      ("Why am I burdened with this weight?", 1);
      ("", 0);
      ("Hello world", 0);
      ("I am reading a book", 1);
      ("I’m watching a boring movie.", 1);
      ("I’ve been staring at this sheet of paper for hours", 1);
      ("I’m tired of playing video games", 1)]
  in
  let rec check_boredom (test_cases : (string * int) list) : unit =
    match test_cases with
    | [] -> ()
    | (s, expected) :: test_cases ->
        if expected <> is_bored s then
          Printf.printf "Test Failed: %s (expected %d, got %d)\n" s expected (is_bored s)
        else
          Printf.printf "Test Passed: %s\n" s;
        check_boredom test_cases
  in
  check_boredom test_cases

