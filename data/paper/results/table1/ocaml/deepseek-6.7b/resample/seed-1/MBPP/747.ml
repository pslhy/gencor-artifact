(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the longest common subsequence for the given three string sequence. https://www.geeksforgeeks.org/lcs-longest-common-subsequence-three-strings/ *)
let rec lcs_of_three (x : string) (y : string) (z : string) : int =
  let m, n, o = String.length x, String.length y, String.length z in
  let lcs_of_two_strings a b =
    let m, n = String.length a, String.length b in
    let dp = Array.make_matrix (m + 1) (n + 1) 0 in
    for i = 1 to m do
      for j = 1 to n do
        if a.[i - 1] == b.[j - 1]
        then dp.(i).(j) <- 1 + dp.(i - 1).(j - 1)
        else dp.(i).(j) <- max dp.(i - 1).(j) dp.(i).(j - 1)
      done;
    done;
    dp.(m).(n)
  in
  let lcs_of_three_strings a b c =
    let temp = lcs_of_two_strings a b in
    let m, n = String.length a, String.length c in
    let dp = Array.make_matrix (m + 1) (n + 1) 0 in
    for i = 1 to m do
      for j = 1 to n do
        if a.[i - 1] == c.[j - 1]
        then dp.(i).(j) <- 1 + temp
        else dp.(i).(j) <- max dp.(i - 1).(j) dp.(i).(j - 1)
      done;
      let _ = temp <- lcs_of_two_strings b c in
    done;
    dp.(m).(n)
  in
  lcs_of_three_strings x y z

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:26:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec lcs_of_three (x : string) (y : string) (z : string) : int =
  let m, n, p = String.length x, String.length y, String.length z in
  let lcs_of_two_strings a b =
    let m, n = String.length a, String.length b in
    let dp = Array.make_matrix (m + 1) (n + 1) 0 in
    for i = 1 to m do
      for j = 1 to n do
        if a.[i - 1] == b.[j - 1]
        then dp.(i).(j) <- 1 + dp.(i - 1).(j - 1)
        else dp.(i).(j) <- max dp.(i - 1).(j) dp.(i).(j - 1)
      done;
    done;
    dp.(m).(n)
  in
  let lcs_of_three_strings a b c =
    let temp = lcs_of_two_strings a b in
    let m, n = String.length a, String.length c in
    let dp = Array.make_matrix (m + 1) (n + 1) 0 in
    for i = 1 to m do
      for j = 1 to n do
        if a.[i - 1] == c.[j - 1]
        then dp.(i).(j) <- 1 + temp
        else dp.(i).(j) <- max dp.(i - 1).(j) dp.(i).(j - 1)
      done;
      let _ = temp <- lcs_of_two_strings b c in
    done;
    dp.(m).(n)
  in
  lcs_of_three_strings x y z

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:26:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec lcs_of_three (x : string) (y : string) (z : string) : int =
  let m, n, p = String.length x, String.length y, String.length z in
  let lcs_of_two_strings a b =
    let m, n = String.length a, String.length b in
    let dp = Array.make_matrix (m + 1) (n + 1) 0 in
    for i = 1 to m do
      for j = 1 to n do
        if a.[i - 1] = b.[j - 1]
        then dp.(i).(j) <- 1 + dp.(i - 1).(j - 1)
        else dp.(i).(j) <- max dp.(i - 1).(j) dp.(i).(j - 1)
      done;
    done;
    dp.(m).(n)
  in
  let lcs_of_three_strings a b c =
    let temp1 = lcs_of_two_strings a b in
    let temp2 = lcs_of_two_strings a c in
    let m, n = String.length a, String.length c in
    let dp = Array.make_matrix (m + 1) (n + 1) 0 in
    for i = 1 to m do
      for j = 1 to n do
        if a.[i - 1] = c.[j - 1]
        then dp.(i).(j) <- 1 + max temp1 temp2
        else dp.(i).(j) <- max dp.(i - 1).(j) dp.(i).(j - 1)
      done;
    done;
    dp.(m).(n)
  in
  lcs_of_three_strings x y z

