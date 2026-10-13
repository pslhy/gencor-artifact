let rec max_length (list1 : int list list) :  int * int list = 
  let rec helper (list2: int list list) (currentMax: int list) (maxLength: int) = 
    match list2 with 
    | [] -> (maxLength, currentMax)
    | h::t -> 
      let length = List.length h in
      if length > maxLength then helper t h length
      else helper t currentMax maxLength
  in
  helper list1 [] 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the list of maximum length in a list of lists. *)
