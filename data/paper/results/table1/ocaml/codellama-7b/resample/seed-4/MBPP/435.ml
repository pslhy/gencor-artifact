(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the last digit of a given number. *)
let rec last_Digit (n : int) : int = 
    if (n < 10) then n
    else let (q, r) = 
            let _ : int * int = (n / 10, n mod 10) in
                let q = Int.of_string(string_of_int q)
                    in
                        if List.length q = 1
                            then (q, r)
                            else (r, q mod 10)
        in
            last_Digit r

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:25: Unbound value "Int.of_string" *)
(*     Hint: Did you mean "to_string"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec last_Digit (n : int) : int = 
    if (n < 10) then n
    else let (q, r) = 
            let _ : int * int = (n / 10, n mod 10) in
                (to_string q, r)
        in
            last_Digit r

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:18: Unbound value "to_string" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec last_Digit (n : int) : int =
  if (n < 10) then n
  else let (q, r) = (n / 10, n mod 10) in
    if (q = 0) then r
    else last_Digit q

