(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the longest common subsequence for the given three string sequence. https://www.geeksforgeeks.org/lcs-longest-common-subsequence-three-strings/ *)
let rec lcs_of_three (x : string) (y : string) (z : string) : int =
  if x = "" || y = "" || z = "" then
    0
  else if x.[0] = y.[0] && x.[0] = z.[0] then
    1 + lcs_of_three (String.sub x 1 (String.length x - 1)) (String.sub y 1 (String.length y - 1)) (String.sub z 1 (String.length z - 1))
  else
    max (lcs_of_three x y (String.sub z 1 (String.length z - 1)))
         (lcs_of_three x (String.sub y 1 (String.length y - 1)) z)

let longest_common_subsequence (x : string list) : string =
  let module List = struct
    include List

    let lcs xs ys = List.map2 lcs_of_three xs ys |> List.max
  end in
  List.reduce (fun acc x -> if String.length x > String.length acc then x else acc) x

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:53: Unbound value "List.max" *)
(*     Hint: Did you mean "map"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec lcs_of_three (x : string) (y : string) (z : string) : int =
  if x = "" || y = "" || z = "" then
    0
  else if x.[0] = y.[0] && x.[0] = z.[0] then
    1 + lcs_of_three (String.sub x 1 (String.length x - 1)) (String.sub y 1 (String.length y - 1)) (String.sub z 1 (String.length z - 1))
  else
    max (lcs_of_three x y (String.sub z 1 (String.length z - 1)))
         (lcs_of_three x (String.sub y 1 (String.length y - 1)) z)

let longest_common_subsequence (x : string list) : string =
  let module List = struct
    include List

    let lcs xs ys = List.map2 lcs_of_three xs ys |> List.max
  end in
  List.reduce (fun acc x -> if String.length x > String.length acc then x else acc) x

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:53: Unbound value "List.max" *)
(*     Hint: Did you mean "map"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec lcs_of_three (x : string) (y : string) (z : string) : int =
  if x = "" || y = "" || z = "" then
    0
  else if x.[0] = y.[0] && x.[0] = z.[0] then
    1 + lcs_of_three (String.sub x 1 (String.length x - 1)) (String.sub y 1 (String.length y - 1)) (String.sub z 1 (String.length z - 1))
  else
    List.max (lcs_of_three x y (String.sub z 1 (String.length z - 1)))
             (lcs_of_three x (String.sub y 1 (String.length y - 1)) z)

let longest_common_subsequence (x : string list) : string =
  let rec aux (acc : string) (l : string list) : string =
    match l with
    | [] -> acc
    | h :: t ->
      let lcs = lcs_of_three acc h (String.sub t 1 (String.length t - 1)) in
      let longest = String.sub acc 0 lcs in
      aux longest t
  in
  aux "" (x @ [""])

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:5: Unbound value "List.max" *)
(*     Hint: Did you mean "map"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec lcs_of_three (x : string) (y : string) (z : string) : int =
  if x = "" || y = "" || z = "" then
    0
  else if x.[0] = y.[0] && x.[0] = z.[0] then
    1 + lcs_of_three (String.sub x 1 (String.length x - 1)) (String.sub y 1 (String.length y - 1)) (String.sub z 1 (String.length z - 1))
  else
    List.map (fun s -> lcs_of_three s x y z) (lcs_of_three x y z) |> List.max

let longest_common_subsequence (x : string list) : string =
  let rec aux (acc : string) (l : string list) : string =
    match l with
    | [] -> acc
    | h :: t ->
      let lcs = lcs_of_three acc h (String.sub t 1 (String.length t - 1)) in
      let longest = String.sub acc 0 lcs in
      aux longest t
  in
  aux "" (x @ [""])

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:70: Unbound value "List.max" *)
(*     Hint: Did you mean "map"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec lcs_of_three (x : string) (y : string) (z : string) : int =
  if x = "" || y = "" || z = "" then
    0
  else if x.[0] = y.[0] && x.[0] = z.[0] then
    1 + lcs_of_three (String.sub x 1 (String.length x - 1)) (String.sub y 1 (String.length y - 1)) (String.sub z 1 (String.length z - 1))
  else
    List.map (fun s -> lcs_of_three s x y z) (lcs_of_three x y z) |> List.max

let longest_common_subsequence (x : string list) : string =
  let rec aux (acc : string) (l : string list) : string =
    match l with
    | [] -> acc
    | h :: t ->
      let lcs = lcs_of_three acc h (String.sub t 1 (String.length t - 1)) in
      let longest = String.sub acc 0 lcs in
      aux longest t
  in
  aux "" (x @ [""])

