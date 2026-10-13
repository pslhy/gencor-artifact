(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether all the bits are unset in the given range or not. *)
let rec all_Bits_Set_In_The_Given_Range (n : int) (l : int) (r : int) : bool = 
    (* base case: If the range is empty, there are no unset bits *)
    if l = r then true
    (* Inductive case: Check if the bits from n to l are set, and all_Bits_Set_In_The_Given_Range for the rest of the recursion *)
    if List.init (r - 1) (fun i -> l + i + 1) |> List.for_all (fun x -> not (n land (1 lsl x) = 0)) then all_Bits_Set_In_The_Given_Range


(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec all_Bits_Set_In_The_Given_Range (n : int) (l : int) (r : int) : bool = 
    if l = r then true
    else if List.init (r - 1) (fun i -> l + i + 1) |> List.for_all (fun x -> not (n land (1 lsl x) = 0)) then all_Bits_Set_In_The_Given_Range (n, l + 1, r)
    else false

