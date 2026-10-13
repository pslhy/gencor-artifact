let rec check_distinct (test_tup : int list) : bool =
  match test_tup with
  | [] -> true
  | x :: xs ->
    let test_unique = check_distinct xs in
    if test_unique then
      match xs with
      | [] -> true
      | y :: _ -> x != y && check_distinct xs
    else
      false
       
let lst = [1; 2; 3; 3; 5; 1; 5];;
(check_distinct lst = false);;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if given list contains no duplicates. *)
