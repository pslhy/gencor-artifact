
let rec odd_Equivalent (s : string) (n : int) : int = 
  let rotate_string (s : string) (n : int) : string = 
    let len = String.length s in
    let n = n mod len in
    String.sub s n (len - n) ^ String.sub s 0 n in
  let rec count_odd s n count = 
    if n = 0 then count
    else 
      let rotated_s = rotate_string s n in
      let ones_count = String.length (String.split_on_char '0' rotated_s |> List.filter (fun x -> x <> "") |> List.concat) in
      if ones_count mod 2 = 1 then count_odd s (n - 1) (count + 1)
      else count_odd s (n - 1) count in
  count_odd s (String.length s) 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the number of numbers with an odd value when rotating a binary string the given number of times. *)
