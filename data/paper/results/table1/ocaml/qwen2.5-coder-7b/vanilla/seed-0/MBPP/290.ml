let rec max_length (list1 : int list list) :  int * int list = 
  let rec helper max_head max_tail = function
    | [] -> (max_head, max_tail)
    | hd::tl -> 
        if List.length hd > List.length max_head then
          helper hd hd tl
        else
          helper max_head max_tail tl
  in 
  helper [] [] list1;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the list of maximum length in a list of lists. *)
