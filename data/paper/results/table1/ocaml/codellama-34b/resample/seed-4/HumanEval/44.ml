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
    let ( << ) = Big_int.(( << )) in
    let ( ||| ) = Big_int.(( ||| )) in
    let zero = Big_int.zero_big_int in
    let rec loop x base res =
        let (x, r) = Big_int.quomod_big_int x base in
        if Big_int.eq_big_int x zero then 
            res
        else 
            loop x base (string_of_int (Big_int.int_of_big_int r) :: res) in
    let base = Big_int.big_int_of_int base in
    String.concat "" (loop x base [])

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:18: Unbound module "Big_int" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec change_base (x : int) (base : int) : string =
    let ( << ) = ( * ) in
    let ( ||| ) = ( + ) in
    let zero = 0 in
    let rec loop x base res =
        let (x, r) = (x / base, x mod base) in
        if x = zero then
            res
        else
            loop x base (string_of_int r :: res) in
    String.concat "" (loop x base [])

