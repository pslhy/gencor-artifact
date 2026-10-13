let rec freq_count (list1 : int list) : (int * int) list =
    match list1 with
    | [] -> []
    | h :: t -> 
        let (l, m) = freq_count t in
        if List.mem h m then
            (h, 1 + List.assoc h l) :: (List.remove_assoc h l)
        else
            (h, 1) :: l


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to get the frequency of all the elements in a list, returned as an association list. *)
