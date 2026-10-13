let rec fix_spaces (text : string) : string =
    let space_count =
        let count = ref 0 in
        String.iter (fun c ->
            if c = ' ' then
                incr count
            else
                count := 0
        ) text;
        !count
    in
    if space_count >= 2 then
        let result =
            String.map (fun c ->
                if c = ' ' then
                    '-'
                else
                    c
            ) text
        in
        String.concat "" (List.filter (fun c -> c <> ' ' && c <> '-') (String.split_on_char ' ' result))
    else
        let result =
            String.map (fun c -> if c = ' ' then '_' else c) text
        in
        String.concat "" (List.filter (fun c -> c <> ' ' && c <> '_') (String.split_on_char ' ' result))
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a string text, replace all spaces in it with underscores, *)
(*     and if a string has more than 2 consecutive spaces, *)
(*     then replace all consecutive spaces with - *)
(*     >>> fix_spaces " Example" *)
(*     "Example" *)
(*     >>> fix_spaces " Example 1" *)
(*     "Example_1" *)
(*     >>> fix_spaces " Example 2" *)
(*     "_Example_2" *)
(*     >>> fix_spaces " Example 3" *)
(*     "_Example-3" *)
