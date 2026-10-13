let rec is_happy (s : string) : bool = 
  let rec helper (s : string) (prev1 : char option) (prev2 : char option) : bool = 
    match s with
    | "" -> true
    | _ when String.length s < 3 -> false
    | h::t -> 
      if Option.exists (fun x -> x = h) (Some prev1) || Option.exists (fun x -> x = h) (Some prev2) then false
      else helper t (Some h) prev1
  in
  helper (String.to_list s) None None


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     You are given a string s. *)
(*     Your task is to check if the string is hapml or not. *)
(*     A string is hapml if its length is at least 3 and every 3 consecutive letters are distinct *)
(*     For example: *)
(*     >>> is_happy "a" *)
(*     false *)
(*     >>> is_happy "aa" *)
(*     false *)
(*     >>> is_happy "abcd" *)
(*     true *)
(*     >>> is_happy "aabb" *)
(*     false *)
(*     >>> is_happy "adb" *)
(*     true *)
(*     >>> is_happy "xyy" *)
(*     false *)
