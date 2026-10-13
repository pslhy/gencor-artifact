(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the character made by adding the ASCII value of all the characters of the given string modulo 26. *)
let rec get_Char (strr : string) : string =
    match strr with
    | "" -> ""
    | x :: xs -> (Char.chr (Char.code x + 1) %% 26 + 64) :: get_Char xs
    | _ -> strr

module IntMap = Map.Make (Int)
let int_map =
    String.to_seq strr
    |> Seq.map Char.code
    |> Seq.fold_left (fun m k -> IntMap.add (Char.code k) k m) IntMap.empty;
let result = String.to_seq strr |> Seq.map (fun k -> IntMap.find (Char.code k mod 26) int_map) |> String.of_seq |> String.make 1

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_Char (strr : string) : string =
    match strr with
    | "" -> ""
    | x :: xs -> (Char.chr (Char.code x + 1 mod 26 + 64)) :: get_Char xs
    | _ -> strr

module IntMap = Map.Make (Int)
let int_map =
    String.to_seq strr
    |> Seq.map Char.code
    |> Seq.fold_left (fun m k -> IntMap.add (Char.code k mod 26) k m) IntMap.empty
let result =
    String.to_seq strr
    |> Seq.map (fun k -> IntMap.find (Char.code k mod 26) int_map)
    |> String.of_seq
    |> String.make 1

