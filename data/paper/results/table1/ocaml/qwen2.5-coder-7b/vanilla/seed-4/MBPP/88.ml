let rec freq_count (list1 : int list) : (int * int) list = 
  let rec helper (list1 : int list) (assoc_list : (int * int) list) : (int * int) list = 
    match list1 with
    | [] -> assoc_list
    | h::t -> 
      match assoc_list with
      | [] -> helper t [(h, 1)]
      | (h1, c)::t1 -> 
        if h = h1 then helper t ((h, c+1)::t1)
        else helper t ((h1, c)::(helper [h] assoc_list))
  in
  helper list1 []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to get the frequency of all the elements in a list, returned as an association list. *)
