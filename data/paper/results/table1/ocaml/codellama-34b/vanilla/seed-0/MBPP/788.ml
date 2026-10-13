let rec new_tuple (test_list : string list) (test_str : string) :  string * string * string =
  match test_list with
  | [] -> ("", "", "")
  | x :: y :: _ -> (test_str, x, y)

let () =
  let test_list = ["a"; "b"; "c"] in
  let test_str = "hello" in
  let result = new_tuple test_list test_str in
  print_string result;
  "c";;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to create a new tuple from the given string and list. *)
