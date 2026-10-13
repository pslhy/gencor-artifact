(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Input are two strings a and b consisting only of 1s and 0s. *)
(*     Perform binary XOR on these inputs and return result also as a string. *)
(*     >>> string_xor "010" "110" *)
(*     "100" *)
let rec string_xor (a : string) (b : string) : string =
    let rec aux (acc : string) (a : string) (b : string) : string =
        match a, b with
        | "", _ | _, "" -> acc
        | x :: xs, y :: ys ->
            if (x, y) = ('1', '1') || (x, y) = ('0', '0') then
                aux (acc ^ "0") xs ys
            else
                aux (acc ^ "1") xs ys
    aux "" a b

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec string_xor (a : string) (b : string) : string =
    let rec aux (acc : string) (a : string) (b : string) : string =
        match a, b with
        | "", _ | _, "" -> acc
        | x :: xs, y :: ys when x = y -> aux (acc ^ "0") xs ys
        | x :: xs, y :: ys -> aux (acc ^ "1") xs ys
        | _ -> acc
    aux "" a b

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec string_xor (a : string) (b : string) : string =
    let rec aux (acc : string) (a : string) (b : string) : string =
        match a, b with
        | "", _ | _, "" -> acc
        | x :: xs, y :: ys when x <> y -> aux (acc ^ "1") xs ys
        | _ -> acc
    aux "" a b

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec string_xor (a : string) (b : string) : string =
    let rec aux (acc : string) (a : string) (b : string) : string =
        match a, b with
        | "", _ | _, "" -> acc
        | x :: xs, y :: ys when x <> y -> aux (acc ^ "1") xs ys
        | _ -> acc
    aux "" a b

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec string_xor (a : string) (b : string) : string =
    let rec aux (acc : string) (a : string) (b : string) : string =
        match a, b with
        | "", _ -> acc
        | x :: xs, y :: ys when x <> y -> aux (acc ^ "1") xs ys
        | _ -> acc
    aux "" a b

