let rec digit_distance_nums (n1 : int) (n2 : int) : int =
  if n1 = 0 || n2 = 0 then
    0
  else
    let n = n1 mod 10 - n2 mod 10 in
    if n < 0 then
      n + 10
    else
      n

let digit_distance (nums1 : int list) (nums2 : int list) : int =
  let rec helper (ns1 : int list) (ns2 : int list) (acc : int) : int =
    match (ns1, ns2) with
    | [], [] -> acc
    | n1 :: ns1', n2 :: ns2' -> helper ns1' ns2' (acc + digit_distance_nums n1 n2)
    | [], _ :: ns2' -> helper [] ns2' acc
    | _ :: ns1', [] -> helper ns1' [] acc
  in
  helper nums1 nums2 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of the per-digit difference between two integers. *)
