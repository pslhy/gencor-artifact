let rec freq_count (list1 : int list) : (int * int) list = 
    let rec helper seen result remain = 
        match remain with 
        | [] -> result
        | h::t ->
            if List.mem h seen then
                helper seen result t
            else
                let count = List.length (List.filter (fun x -> x = h) list1) in
                helper (h::seen) ((h, count)::result) t
    in
    helper [] [] list1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to get the frequency of all the elements in a list, returned as an association list. *)
