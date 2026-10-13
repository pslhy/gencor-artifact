(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string. *)
let rec find_length (string : string) : int = 
    let count_diffs (acc, zeros, ones) char = 
        match char with
        | '0' -> (acc - 1, zeros + 1, ones)
        | '1' -> (acc + 1, zeros, ones + 1)
        | _ -> (acc, zeros, ones)
    in
    let (_, zeros, ones) = 
        List.fold_left count_diffs (0, 0, 0) 
            (String.to_list string)
    in
    if ones - zeros < 0 then
        2 * (ones - zeros) * (ones - zeros + 1) / 2
    else
        ones - zeros

let _ =
    let input_string = "0101" in
    Printf.printf "Maximum difference: %d\n" (find_length input_string)
``
(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:20:2: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_length (string : string) : int = 
    let count_diffs (acc, zeros, ones) char = 
        match char with
        | '0' -> (acc - 1, zeros + 1, ones)
        | '1' -> (acc + 1, zeros, ones + 1)
        | _ -> (acc, zeros, ones)
    in
    let (_, zeros, ones) = 
        List.fold_left count_diffs (0, 0, 0) 
            (String.to_list string)
    in
    if ones - zeros < 0 then
        2 * (ones - zeros) * (ones - zeros + 1) / 2
    else
        ones - zeros

let test () =
    let input_string = "0101" in
    Printf.printf "Maximum difference: %d\n" (find_length input_string)

let _ = test ()

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:14: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_length (string : string) : int = 
    let count_diffs (acc, zeros, ones) char = 
        match char with
        | '0' -> (acc - 1, zeros + 1, ones)
        | '1' -> (acc + 1, zeros, ones + 1)
        | _ -> (acc, zeros, ones)
    in
    let (_, zeros, ones) = 
        List.fold_left count_diffs (0, 0, 0) 
            (List.map (fun c -> c) (String.for_all (fun _ -> true) string))
    in
    if ones - zeros < 0 then
        2 * (ones - zeros) * (ones - zeros + 1) / 2
    else
        ones - zeros

let test () =
    let input_string = "0101" in
    Printf.printf "Maximum difference: %d\n" (find_length input_string)

let _ = test ()

