let rec lcs_of_three (x : string) (y : string) (z : string) : int =
  let m, n, o = String.length x, String.length y, String.length z in
  let t = Array.make_matrix (m + 1) (n + 1) (o + 1) 0 in
  for i = 0 to m do
    for j = 0 to n do
      for k = 0 to o do
        if i = 0 || j = 0 || k = 0 then
          t.(i).(j).(k) <- 0
        else if x.[i - 1] = y.[j - 1] && y.[j - 1] = z.[k - 1] then
          t.(i).(j).(k) <- t.(i - 1).(j - 1).(k - 1) + 1
        else
          t.(i).(j).(k) <- 
            max (max (t.(i - 1).(j).(k)) (t.(i).(j - 1).(k))) (t.(i).(j).(k - 1))
      done;
    done;
  done;
  t.(m).(n).(o)

(* Example usage:
     lcs_of_three "abcde" "ace" "aue"
   returns: 
     2 
*)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the longest common subsequence for the given three string sequence. https://www.geeksforgeeks.org/lcs-longest-common-subsequence-three-strings/ *)
