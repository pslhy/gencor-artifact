
let rec find_Index (n : int) : int =
    if (n <= 1) then 1
    else (n - 1) + (find_Index (n - 1))

let main (args : string array) : unit =
    let n : int = int_of_string (args.(0)) in
    let result : int = find_Index (n) in
    print_endline ("Result: " ^ (string_of_int (result)))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/ *)
