let rec is_Sum_Of_Powers_Of_Two (n : int) : bool =
  if n = 0 then false else
  let rec pow_two n = n land (n - 1) = 0 in
  let rec sum_of_powers_of_two n curr =
    if n = 0 then curr else
      if pow_two n then sum_of_powers_of_two (n / 2) (curr + 1) else false in
  sum_of_powers_of_two n 0

let () =
  Printf.printf "Is sum of powers of 2: %b" (is_Sum_Of_Powers_Of_Two 0)

let () =
  Printf.printf "Is sum of powers of 2: %b" (is_Sum_Of_Powers_Of_Two 1)

let () =
  Printf.printf "Is sum of powers of 2: %b" (is_Sum_Of_Powers_Of_Two 2)

let () =
  Printf.printf "Is sum of powers of 2: %b" (is_Sum_Of_Powers_Of_Two 3)

let () =
  Printf.printf "Is sum of powers of 2: %b" (is_Sum_Of_Powers_Of_Two 5)

let () =
  Printf.printf "Is sum of powers of 2: %b" (is_Sum_Of_Powers_Of_Two 8)

let () =
  Printf.printf "Is sum of powers of 2: %b" (is_Sum_Of_Powers_Of_Two 9)

let () =
  Printf.printf "Is sum of powers of 2: %b" (is_Sum_Of_Powers_Of_Two 7)

let () =
  Printf.printf "Is sum of powers of 2: %b" (is_Sum_Of_Powers_Of_Two 16)

let () =
  Printf.printf "Is sum of powers of 2: %b" (is_Sum_Of_Powers_Of_Two 23)

let () =
  Printf.printf "Is sum of powers of 2: %b" (is_Sum_Of_Powers_Of_Two 40)

let () =
  Printf.printf "Is sum of powers of 2: %b" (is_Sum_Of_Powers_Of_Two 41)

let () =
  Printf.printf "Is sum of powers of 2: %b" (is_Sum_Of_Powers_Of_Two 64)

let () =
  Printf.printf "Is sum of powers of 2: %b" (is_Sum_Of_Powers_Of_Two 65)

let () =
  Printf.printf "Is sum of powers of 2: %b" (is_Sum_Of_Powers_Of_Two 79)

let () =
  Printf.printf "Is sum of powers of 2: %b" (is_Sum_Of_Powers_Of_Two 1023)

let () =
  Printf.printf "Is sum of powers of 2: %b" (is_Sum_Of_Powers_Of_Two 1024)

let () =
  Printf.printf "Is sum of powers of 2: %b" (is_Sum_Of_Powers_Of_Two 1)

let () =
  Printf.printf "Is sum of powers of 2: %b" (is_Sum_Of_Powers_Of_Two 255)

let () =
  Printf.printf "Is sum of powers of 2: %b" (is_Sum_Of_Powers_Of_Two 256)

let () =
  Printf.printf "Is sum of powers of 2: %b" (is_Sum_Of_Powers_Of_Two 300000)

let () =
  Printf.printf "Is sum of powers of 2: %b" (is_Sum_Of_Powers_Of_Two 2147483647)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given number can be represented as sum of non-zero powers of 2 or not. *)
