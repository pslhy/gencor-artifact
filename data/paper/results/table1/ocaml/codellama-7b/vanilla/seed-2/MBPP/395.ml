let rec first_non_repeating_character (str1 : string) : string option =
    match str1 with
        | "" -> None
        | str2 ->
            let rev_str2 = String.rev str2 in
            let unique_chars = Hashtbl.create (String.length rev_str2) in

            List.iter (fun c ->
                if not (Hashtbl.mem unique_chars c) then
                    Hashtbl.add unique_chars c ()
                else
                    Hashtbl.remove unique_chars c
            ) (String.to_list rev_str2);

            let first_char, _ = Hashtbl.find first unique_chars in
            Some first_char


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first non-repeated character in a given string. *)
