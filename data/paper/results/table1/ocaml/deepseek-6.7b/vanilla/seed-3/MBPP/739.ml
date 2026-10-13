let rec find_Index (n : int) : int =
  let rec helper (triangular : int) (index : int) : int =
    let num_digits = String.length (string_of_int triangular) in
    if num_digits = n then index
    else helper (triangular + index + 1) (index + 1)
  in
  helper 0 1

let () =
  Printf.printf "%d\n" (find_Index 3)  (* Expected output: 10 *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/ *)
