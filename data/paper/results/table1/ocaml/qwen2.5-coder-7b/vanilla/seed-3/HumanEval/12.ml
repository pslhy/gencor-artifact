let rec longest (strings : string list) : string option = match strings with
    [] -> Some None
    | h :: t -> 
        let rec find_longest (current : string) (rest : string list) : string = match rest with
            [] -> current
            | h' :: t' -> 
                if String.length h' > String.length current then find_longest h' t' else find_longest current t'
        in Some (find_longest h t)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Out of list of strings, return the longest one. Return the first one in case of multiple *)
(*     strings of the same length. Return None in case the input list is empty. *)
(*     >>> longest [] *)
(*     Some(None) *)
(*     >>> longest ["a"; "b"; "c"] *)
(*     Some("a") *)
(*     >>> longest ["a"; "bb"; "ccc"] *)
(*     Some("ccc") *)
