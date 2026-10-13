let rec find_Index (n : int) : int =
    if n = 1 then 1
    else
        let rec loop (i : int) : int =
            let triangular_number = i * (i + 1) / 2 in
                if String.length (string_of_int triangular_number) = n then i
                else loop (i + 1)
        in loop 1

let test = find_Index 2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/ *)
