(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find words that are longer than n characters from a given list of words. *)
let rec long_words (n : int) (str : string) : string list =
  if String.length str > n then begin
    str :: (long_words n (String.sub str 1 (String.length str - 1)))
  end else begin
    []
  end

let () =
  print_endline (List.reduce (^) [] (long_words 4 "hello world, how are you"))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:18: Unbound value "List.reduce" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec long_words (n : int) (str : string) : string list =
  if String.length str > n then begin
    let reduced_str = str |> String.sub 1 (String.length str - 1) |> List.of_array in (* line 9 has been modified *)
    reduced_str @ (long_words n reduced_str)
  end else begin
    []
  end

let () =
  let long_string = "hello this is a very long string" in
  print_endline (List.reduce (^) [] (long_words 4 long_string))

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:70: Unbound value "List.of_array" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec long_words (n : int) (str : string) : string list =
  if String.length str > n then begin
    let reduced_str = str |> String.sub 1 (String.length str - 1) in
    reduced_str :: (long_words n reduced_str)
  end else begin
    []
  end

let () =
  let long_string = "hello this is a very long string" in
  print_endline (List.reduce (^) [] (long_words 4 long_string))

