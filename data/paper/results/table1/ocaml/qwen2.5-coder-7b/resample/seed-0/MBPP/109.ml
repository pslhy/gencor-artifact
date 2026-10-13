(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the number of numbers with an odd value when rotating a binary string the given number of times. *)
let rec odd_Equivalent (s : string) (n : int) : int = 
  let rotate_string (s : string) (n : int) : string = 
    let len = String.length s in
    let n = n mod len in
    String.sub s n (len - n) ^ String.sub s 0 n in
  let rec count_odd s n count = 
    if n = 0 then count
    else 
      let rotated_s = rotate_string s n in
      let ones_count = String.count_chars rotated_s '1' in
      if ones_count mod 2 <> 0 then count_odd s (n - 1) (count + 1)
      else count_odd s (n - 1) count in
  count_odd s n 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:24: Unbound value "String.count_chars" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec odd_Equivalent (s : string) (n : int) : int = 
  let rotate_string (s : string) (n : int) : string = 
    let len = String.length s in
    let n = n mod len in
    String.sub s n (len - n) ^ String.sub s 0 n in
  let ones_count (s : string) : int = 
    s |> String.fold_left (fun acc c -> if c = '1' then acc + 1 else acc) 0 in
  let rec count_odd s n count = 
    if n = 0 then count
    else 
      let rotated_s = rotate_string s n in
      let ones_count = ones_count rotated_s in
      if ones_count mod 2 <> 0 then count_odd s (n - 1) (count + 1)
      else count_odd s (n - 1) count in
  count_odd s n 0

