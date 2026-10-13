let rec len_log (list1 : string list) : int =
  match list1 with
  | [] -> 0
  | [x] -> String.length x
  | h::t -> String.length h
 
let longest_word (list1 : string list) : string =
  let rec find_longest (list1 : string list) : string =
    match list1 with
    | [] -> "The list is empty"
    | [x] -> x
    | h::t -> find_longest t
  in
  find_longest (List.map (fun (x : string) -> len_log x) list1)

(* Example usage to find the longest word *)
let longest_word list1 = longest_word list1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the length of the longest word. *)
