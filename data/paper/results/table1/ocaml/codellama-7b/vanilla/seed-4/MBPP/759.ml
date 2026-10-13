let rec is_decimal (num : string) : bool = 
    (* Check if the string only contains digits and decimal point. *)
    if not (List.for_all num ~f:(fun c -> c >= '0' && c <= '9' || c = '.') then
        false
    else
        (* Check if the decimal point occurs at the correct position. *)
        let dec_pos = String.index_exn num '.' in
        if dec_pos = 0 || dec_pos <> String.length num - 1 then
            false
        else
            (* Check if the part before the decimal point has 2 digits. *)
            let part_before_dec = String.sub num ~pos:0 ~len:dec_pos in
            String.length part_before_dec = 2


let is_decimal "123.45" = true
let is_decimal "123.456" = false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether a given string is a decimal number with a precision of 2. *)
