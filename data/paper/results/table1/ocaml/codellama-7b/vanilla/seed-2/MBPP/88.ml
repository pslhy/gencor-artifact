let rec freq_count (list1 : int list) : (int * int) list =
    match list1 with
        | [] -> []
        | (x::xs) ->
            let (freq, rest) = (List.filter (fun (y,_) -> y = x) list1), List.filter (fun (y,_) -> y <> x) list1 in
              match freq with
                | [z] -> [x, snd z] :: freq_count rest
                | [] -> freq_count rest


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to get the frequency of all the elements in a list, returned as an association list. *)
