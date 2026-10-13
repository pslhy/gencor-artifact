(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the number of numbers with an odd value when rotating a binary string the given number of times. *)
let rec odd_Equivalent (s : string) (n : int) : int =
    if n = 0 then 0
    else
        match (String.to_list s) with
        | [] -> 0
        | h::t -> (if (((int_of_char h) + (odd_Equivalent (String.make 1 (char_of_int ((int_of_char h) mod 2))) n)) mod 2) = 1 then 1 else 0) + (odd_Equivalent (t |> List.rev |> List.cons h |> String.of_list) (n-1))

let bin_rotation (n : int) : int =
    let rec loop count s =
        if count = n then s
        else loop (count+1) (s ^ "0")
    in
    let s = loop 0 "" in
    let rec count_odd s count =
        match (String.to_list s) with
        | [] -> count
        | h::t -> count_odd (t |> String.of_list) ((if (int_of_char h) mod 2 = 1 then count+1 else count))
    in
    count_odd s 0

let odd_Equivalent_rotation n =
    bin_rotation n |> String.length |> odd_Equivalent

let odd_Equivalent_rotations lst =
    List.map odd_Equivalent_rotation lst

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:16: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec odd_Equivalent (s : string) (n : int) : int =
    if n = 0 then 0
    else
        match s with
        | "" -> 0
        | h::t -> (if (((int_of_char h) + (odd_Equivalent (string_of_char (char_of_int ((int_of_char h) mod 2))) n)) mod 2) = 1 then 1 else 0) + (odd_Equivalent (t) (n-1))

let bin_rotation (n : int) : int =
    let rec loop count s =
        if count = n then s
        else loop (count+1) (s ^ "0")
    in
    let s = loop 0 "" in
    let rec count_odd s count =
        match s with
        | "" -> count
        | h::t -> count_odd (t) ((if (int_of_char h) mod 2 = 1 then count+1 else count))
    in
    count_odd s 0

let odd_Equivalent_rotation n =
    bin_rotation n |> string_of_int |> odd_Equivalent

let odd_Equivalent_rotations lst =
    List.map odd_Equivalent_rotation lst

