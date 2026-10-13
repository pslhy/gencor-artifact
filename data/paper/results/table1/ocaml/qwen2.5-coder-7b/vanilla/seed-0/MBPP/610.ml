let rec remove_kth_element (list1 : int list) (l : int) : int list = 
  let rec helper lst count acc = 
    match lst with 
    | [] -> List.rev acc 
    | hd::tl -> 
        if count = l then helper tl (count + 1) acc 
        else helper tl (count + 1) (hd::acc) 
  in helper list1 1 []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function which takes a list and returns a list with the same elements, but the k'th element removed. *)
