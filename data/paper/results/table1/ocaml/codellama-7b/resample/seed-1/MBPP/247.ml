(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the length of the longest palindromic subsequence in the given string. *)
let rec lps (str : string) : int =
    let n = String.length str in
    if n = 0 then 0
    else if n = 1 then 1
    else begin
        let rec aux (i : int) (j : int) (max : int) (dp : int array array) : int =
            if i > j then max
            else if dp.(i).(j) = 0 then
                let l = aux (i + 1) (j) max dp in
                let r = aux (i) (j - 1) (max) dp in
                let c = if str.[i] = str.[j] then max + 1 else max in
                max max l r c
            else dp.(i).(j)
        in

        let dp = Array.make_matrix (n + 1) (n + 1) 0 in
        aux 0 n 0 dp
    end

let str = "abcdefgba" in
print_int (lps str);;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:20:23: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec lps (str : string) : int =
  let n = String.length str in
  if n < 2 then 0
  else begin
    let rec aux (i : int) (j : int) (max : int) (dp : int array array) : int =
      if i > j then max
      else if dp.(i).(j) = 0 then
        let l = aux (i + 1) (j) max dp in
        let r = aux (i) (j - 1) (max) dp in
        let c = if str.[i] = str.[j] then max + 1 else max in
        max max l r c
      else dp.(i).(j)
    in

    let dp = Array.make_matrix (n + 1) (n + 1) 0 in
    aux 0 n 0 dp
  end

let str = "abcd" in
print_int (lps str);;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:19:18: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec lps (str : string) : int =
  let n = String.length str in
  if n < 2 then 0
  else begin
    let rec aux (i : int) (j : int) (max : int) (dp : int array array) : int =
      if i > j then max
      else if dp.(i).(j) = 0 then
        let l = aux (i + 1) (j) max dp in
        let r = aux (i) (j - 1) (max) dp in
        let c = if str.[i] = str.[j] then max + 1 else max in
        max max l r c
      else dp.(i).(j)
    in

    let dp = Array.make_matrix (n + 1) (n + 1) 0 in
    aux 0 n 0 dp
  end

let str = "abcd" in
print_int (lps str);;

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:19:18: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec lps (str : string) : int =
  let n = String.length str in
  if n < 2 then 0
  else if str.[0] = str.[1] then 1 + lps (String.sub str 2 (n - 2))
  else lps (String.sub str 1 (n - 1));;

