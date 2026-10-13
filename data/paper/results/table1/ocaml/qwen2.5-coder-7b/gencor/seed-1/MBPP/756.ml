
let rec text_match_zero_one (text : string) : bool = 
  let rec check (text : string) (count : int) : bool = 
    match text, count with
    | _, 0 -> false
    | "b", _ -> true
    | "a", 1 -> check (String.sub text 1 (String.length text - 1)) 0
    | "a", _ -> check (String.sub text 1 (String.length text - 1)) (count + 1)
    | _ -> false
  in
  check text 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an 'a' followed by one or more 'b's. https://www.w3resource.com/mlthon-exercises/re/mlthon-re-exercise-3.php *)
