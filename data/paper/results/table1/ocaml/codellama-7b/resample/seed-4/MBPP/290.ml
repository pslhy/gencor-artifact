(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the list of maximum length in a list of lists. *)
let rec max_length (list1 : int list list) :  int * int list = 
    match list1 with 
      head :: tail -> 
          (match tail with 
          [] -> head,head 
         | _ ->
         let (l', li) =  max_length list1 in 
         if li < ll then l',l
         else l, li);
         [] -> List.tl list1, 0)
    

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:13: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_length (list1 : int list list) :  int * int list =
    match list1 with
    | hea :: tail ->
        let (l, li) = max_length tail in
        if li < List.length hea then l, List.length hea
        else l, li
    | [] -> List.tl list1, 0


