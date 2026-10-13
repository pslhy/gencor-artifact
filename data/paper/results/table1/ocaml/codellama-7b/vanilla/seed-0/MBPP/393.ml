let rec max_length_list (input_list : int list list) :  int * int list =
    match input_list with
        | [] -> failwith "Empty list"
        | [head] -> (List.length head, head)
        | head::tail ->
            let (len, max_list) = max_length_list tail in
            if (List.length head) >= len then
                (List.length head, head)
            else
                (len, max_list)
in
max_length_list input_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the list with maximum length. *)
