(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string. *)
let rec find_length (string : string) : int =
    let rec aux (acc : int) (start : int) (stop : int) : int =
        if start < stop 
        then aux (if string.[start] = '1' then acc + 1 else acc - 1) (start + 1) stop
        else acc
    in
    aux 0 0 (String.length string)

let max_diff s =
    let zeroes = find_length s 0 (String.length s - 1) 0
    let ones = find_length s 0 (String.length s - 1) 1
    max (abs (zeroes - ones)) (abs (ones - zeroes))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_length (string : string) : int =
    let rec aux (acc : int) (start : int) (stop : int) : int =
        if start < stop 
        then aux (if string.[start] = '1' then acc + 1 else acc - 1) (start + 1) stop
        else acc
    in
    aux 0 0 (String.length string)

let max_diff s =
    let zeroes = find_length s 0 (String.length s - 1) 0
    (* The error is here, you can't subtract 0 from a string *)
    let ones = find_length s 0 (String.length s - 1) 1
    max (abs (zeroes - ones)) (abs (ones - zeroes))

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_length (string : string) : int =
    let rec aux (acc : int) (start : int) (stop : int) : int =
        if start < stop 
        then aux (if string.[start] = '1' then acc + 1 else acc - 1) (start + 1) stop
        else acc
    in
    (* The error is here, you can't subtract 0 from a string *)
    aux 0 0 (String.length string - 1)

let max_diff s =
    let zeroes = find_length s 0 (String.length s - 1) 0
    (* The error is here, you can't subtract 0 from a string *)
    let ones = find_length s 0 (String.length s - 1) 1
    max (abs (zeroes - ones)) (abs (ones - zeroes))

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_length (string : string) : int =
    let rec aux (acc : int) (start : int) (stop : int) : int =
        if start < stop 
        then aux (if string.[start] = '1' then acc + 1 else acc - 1) (start + 1) stop
        else acc
    in
    (* The error is here, you can't subtract 0 from a string *)
    aux 0 0 (String.length string - 1)

let max_diff s =
    let zeroes = find_length s 0 (String.length s - 1) 0
    (* The error is here, you can't subtract 0 from a string *)
    let ones = find_length s 0 (String.length s - 1) 1
    max (abs (zeroes - ones)) (abs (ones - zeroes))

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_length (string : string) : int =
    let rec aux (acc : int) (start : int) (stop : int) : int =
        if start < stop then
            aux (if string.[start] = '1' then acc + 1 else acc - 1) (start + 1) stop
        else
            acc
    in
    aux 0 0 (String.length string - 1)

let max_diff string =
    let zeroes = find_length string 0 (String.length string - 1) 0 in
    let ones = find_length string 0 (String.length string - 1) 1 in
    max (abs (zeroes - ones)) (abs (ones - zeroes))

