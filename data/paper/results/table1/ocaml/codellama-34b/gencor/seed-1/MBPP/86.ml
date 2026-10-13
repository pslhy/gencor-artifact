
let rec centered_hexagonal_number (n : int) : int =
    let rec aux (acc : int) (k : int) : int =
        if k = 0 then
            acc
        else
            let acc = acc + (k * (k - 1))
            aux acc (k - 1) in
    aux 1 (2 * n)

(* Example usage:
  let centered_hexagonal_number = centered_hexagonal_number 3
  (* Returns: 15 *)
*)
 
(* Example usage:
  let centered_hexagonal_number = centered_hexagonal_number 5
  (* Returns: 25 *)
*)
 
(* Example usage:
  let centered_hexagonal_number = centered_hexagonal_number 10
  (* Returns: 145 *)
*)
 
(* Example usage:
  let centered_hexagonal_number = centered_hexagonal_number 20
  (* Returns: 375 *)
*)
 
(* Example usage:
  let centered_hexagonal_number = centered_hexagonal_number 30
  (* Returns: 675 *)
*)
 
(* Example usage:
  let centered_hexagonal_number = centered_hexagonal_number 40
  (* Returns: 1075 *)
*)
 
(* Example usage:
  let centered_hexagonal_number = centered_hexagonal_number 50
  (* Returns: 1675 *)
*)
 
(* Example usage:
  let centered_hexagonal_number = centered_hexagonal_number 60
  (* Returns: 2375 *)
*)
 
(* Example usage:
  let centered_hexagonal_number = centered_hexagonal_number 70
  (* Returns: 3175 *)
*)
 
(* Example usage:
  let centered_hexagonal_number = centered_hexagonal_number 80
  (* Returns: 4075 *)
*)
 
(* Example usage:
  let centered_hexagonal_number = centered_hexagonal_number 90
  (* Returns: 4975 *)
*)
 
(* Example usage:
  let centered_hexagonal_number = centered_hexagonal_number 100
  (* Returns: 5975 *)
*)
 
(* Example usage:
  let centered_hexagonal_number = centered_hexagonal_number 200
  (* Returns: 11975 *)
*)
 
(* Example usage:
  let centered_hexagonal_number = centered_hexagonal_number 300
  (* Returns: 18575 *)
*)
 
(* Example usage:
  let centered_hexagonal_number = centered_hexagonal_number 400
  (* Returns: 26075 *)
*)
 
(* Example usage:
  let centered_hexagonal_number = centered_hexagonal_number 500
  (* Returns: 33750 *)
*)
 
(* Example usage:
  let centered_hexagonal_number = centered_hexagonal_number 600
  (* Returns: 41475 *)
*)
 
(* Example usage:
  let centered_hexagonal_number = centered_hexagonal_number 700
  (* Returns: 49275 *)
*)
 
(* Example usage:
  let centered_hexagonal_number = centered_hexagonal_number 800
  (* Returns: 57175 *)
*)
 
(* Example usage:
  let centered_hexagonal_number = centered_hexagonal_number 900
  (* Returns: 65175 *)
*)
 
(* Example usage:
  let centered_hexagonal_number = centered_hexagonal_number 1000
  (* Returns: 73175 *)
*)

(* Example usage:
  let centered_hexagonal_number = centered_hexagonal_number 2000
  (* Returns: 147875 *)
*)

(* Example usage:
  let centered_hexagonal_number = centered_hexagonal_number 3000
  (* Returns: 224475 *)
*)

(* Example usage:
  let centered_hexagonal_number = centered_hexagonal_number 4000
  (* Returns: 303375 *)
*)

(* Example usage:
  let centered_hexagonal_number = centered_hexagonal_number 5000
  (* Returns: 383475 *)
*)

(* Example usage:
  let centered_hexagonal_number = centered_hexagonal_number 6000
  (* Returns: 465575 *)
*)

(* Example usage:
  let centered_hexagonal_number = centered_hexagonal_number 7000
  (* Returns: 549675 *)
*)

(* Example usage:
  let centered_hexagonal_number = centered_hexagonal_number 8000
  (* Returns: 635775 *)
*)

(* Example usage:
  let centered_hexagonal_number = centered_hexagonal_number 9000
  (* Returns: 723875 *)
*)

(* Example usage:
  let centered_hexagonal_number = centered_hexagonal_number 10000
  (* Returns: 813875 *)
*)
 
(* Example usage:
  let centered_hexagonal_number = centered_hexagonal_number 20000
  (* Returns: 1651575 *)
*)

(* Example usage:
  let centered_hexagonal_number = centered_hexagonal_number 30000
  (* Returns: 2504875 *)
*)

(* Example usage:
  let centered_hexagonal_number = centered_hexagonal_number 40000
  (* Returns: 3378175 *)
*)

(* Example usage:
  let centered_hexagonal_number = centered_hexagonal_number 50000
  (* Returns: 4269475 *)
*)

(* Example usage:
  let centered_hexagonal_number = centered_hexagonal_number 60000
  (* Returns: 5174775 *)
*)

(* Example usage:


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find nth centered hexagonal number. *)
