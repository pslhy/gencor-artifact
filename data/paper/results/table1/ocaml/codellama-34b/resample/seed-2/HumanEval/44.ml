(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Change numerical base of input number x to base. *)
(*     return string representation after the conversion. *)
(*     base numbers are less than 10. *)
(*     >>> change_base 8 3 *)
(*     "22" *)
(*     >>> change_base 8 2 *)
(*     "1000" *)
(*     >>> change_base 7 2 *)
(*     "111" *)
let rec change_base (x : int) (base : int) : string =
    let zero = "0".[base] in
    let one = "1".[base] in
    let rec inner (num : int) (acc : string) : string =
        if num = 0 then acc else
        let digit = (num mod base).[zero] in
        let next = num / base in
        if next < 0 then zero else
        inner next (acc + digit)
    in
    inner x zero

