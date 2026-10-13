(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/ *)
let rec find_Index (n : int) : int = 
    let rec find_index (k : int) (count : int) : int =
        let triangular_number = (k * (k + 1)) / 2 in
        if Int.to_string triangular_number |> String.length = n then count
        elif Int.to_string triangular_number |> String.length > n then -1
        else find_index (k + 1) (count + 1)
    in
    find_index 1 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:67: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_Index (n : int) : int = 
    let rec find_index (k : int) (count : int) : int =
        let triangular_number = (k * (k + 1)) / 2 in
        if String.length (Int.to_string triangular_number) = n then count
        elif String.length (Int.to_string triangular_number) > n then -1
        else find_index (k + 1) (count + 1)
    in
    find_index 1 0

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:66: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_Index (n : int) : int = 
    let rec find_index (k : int) (count : int) : int =
        let triangular_number = (k * (k + 1)) / 2 in
        if String.length (Int.toString triangular_number) = n then count
        elif String.length (Int.toString triangular_number) > n then -1
        else find_index (k + 1) (count + 1)
    in
    find_index 1 0

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:65: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_Index (n : int) : int = 
    let rec find_index (k : int) (count : int) : int =
        let triangular_number = (k * (k + 1)) / 2 in
        if String.length (Int.toString triangular_number) = n then count
        elif String.length (Int.toString triangular_number) > n then -1
        else find_index (k + 1) (count + 1)
    in
    find_index 1 0

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:65: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_Index (n : int) : int = 
    let rec find_index (k : int) (count : int) : int =
        let triangular_number = (k * (k + 1)) / 2 in
        if String.length (Int.to_string triangular_number) = n then count
        elif String.length (Int.to_string triangular_number) > n then -1
        else find_index (k + 1) (count + 1)
    in
    find_index 1 0

