let rec split_Arr (l : int list) (n : int) : int list =
    if n = 0 then l
    else
        let rec splitter (l1 : int list) (l2 : int list) (times : int) : int list = 
            if times = 0 then l1 @ l2
            else splitter (l1@[List.hd l2]) (List.tl l2) (times-1) in
        splitter [] (List.tl (splitter [] l n)) n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to split a list at the nth eelment and add the first part to the end. *)
