
let rec odd_Equivalent (s : string) (n : int) : int =
  match n with
  | 0 -> 0
  | _ ->
      let open List in
      let s_list = split s |> List.map int_of_string in
      let binary_rotate a =
        match a with
        | hd :: tl -> tl @ [hd]
        | _ -> failwith "empty list"
      in
      let binary_to_decimal l = (List.fold_left (fun a (x, y) -> a + x * (1 lsl y)) 0 (List.mapi (fun i x -> (x, i)) (rev l))) in
      let decimal_to_binary n = (List.rev (split (string_of_int n))) |> map int_of_string in
      let count_odd_values l = (List.filter (fun x -> x mod 2 = 1) l) |> length in
      let rotated_list = s_list |> init 10 (binary_to_decimal) |> map (fun x -> binary_rotate (decimal_to_binary x)) in
      let count_odd_values_rotations = map (fun x -> (count_odd_values (decimal_to_binary x))) rotated_list in
      (fold_left (fun a x -> a + x) 0 count_odd_values_rotations)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the number of numbers with an odd value when rotating a binary string the given number of times. *)
