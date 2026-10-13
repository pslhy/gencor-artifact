(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to that rotate left bits by d bits a given number. We assume that the number is 32 bit. *)
let rec left_rotate (n : int) (d : int) : int = 
    (* Right shift n by d bits and return the result. *)
    n lsr d
    (* Left shift n by the number of bits in an int minus d and return the result. *)
    lsl (sizeof(int) * 8 - d)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:10: Unbound value "sizeof" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec left_rotate (n : int) (d : int) : int =
    let bits = sizeof(int) * 8 in
    ((n lsl d) lor (n lsr (bits - d))) land ((1 lsl bits) - 1)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:16: Unbound value "sizeof" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec left_rotate (n : int) (d : int) : int =
    let bits = int_size in
    ((n lsl d) lor (n lsr (bits - d))) land ((1 lsl bits) - 1)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:16: Unbound value "int_size" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec left_rotate (n : int) (d : int) : int =
    let bits = Sys.word_size in
    ((n lsl d) lor (n lsr (bits - d))) land ((1 lsl bits) - 1)

