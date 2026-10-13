let rec is_decimal (num : string) : bool =
    let is_integer =
        let length = String.length num in
        let rec loop i =
            if i < 0 then
                true
            else
                match num.[i] with
                | '.' -> false
                | _ -> loop (i - 1)
        in
        loop (length - 1)
    in
    if is_integer then
        true
    else
        let rec loop i =
            if i < 0 then
                false
            else
                match num.[i] with
                | '.' -> true
                | _ -> loop (i - 1)
        in
        loop (String.length num - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether a given string is a decimal number with a precision of 2. *)
