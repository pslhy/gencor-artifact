let rec lcs_of_three (x : string) (y : string) (z : string) : int =
  let m, n, o = String.length x, String.length y, String.length z in
  let dp = Array.make_matrix (m+1) (n+1) (o+1) 0 in
  for i = 0 to m do
    for j = 0 to n do
      for k = 0 to o do
        if i = 0 || j = 0 || k = 0 then
          dp.(i).(j).(k) <- 0
        else if x.[i-1] = y.[j-1] && y.[j-1] = z.[k-1] then
          dp.(i).(j).(k) <- 1 + dp.(i-1).(j-1).(k-1)
        else
          dp.(i).(j).(k) <- max (max dp.(i-1).(j).(k) dp.(i).(j-1).(k)) dp.(i).(j).(k-1)
      done;
    done;
  done;
  dp.(m).(n).(o)
in

let s1 = "AGGT12" in
let s2 = "12TXAYB" in
let s3 = "12XBA" in
Printf.printf "Length of LCS is: %d\n" (lcs_of_three s1 s2 s3)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the longest common subsequence for the given three string sequence. https://www.geeksforgeeks.org/lcs-longest-common-subsequence-three-strings/ *)
