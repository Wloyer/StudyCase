<?php

namespace App\Repository;

use App\Entity\Car;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Car>
 *
 * @method Car|null find($id, $lockMode = null, $lockVersion = null)
 * @method Car|null findOneBy(array $criteria, array $orderBy = null)
 * @method Car[]    findAll()
 * @method Car[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class CarRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Car::class);
    }

    public function save(Car $entity, bool $flush = false): void
    {
        $this->getEntityManager()->persist($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function remove(Car $entity, bool $flush = false): void
    {
        $this->getEntityManager()->remove($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }
    public function findBySearch(array $search): array
    {
        $qb = $this->createQueryBuilder('c');


        
        if (isset($search['name'])) {
            $qb->andWhere('c.name LIKE :name')
                ->setParameter('name', '%' . $search['name'] . '%');
        }
        
        if (!empty($search['nbSeats'])) {
            $qb->andWhere('c.nbSeats = :nbSeats')
                ->setParameter('nbSeats', $search['nbSeats']);
        }
        
        if (!empty($search['nbDoors'])) {
            $qb->andWhere('c.nbDoors = :nbDoors')
                ->setParameter('nbDoors', $search['nbDoors']);
        }
        

        if (isset($search['category']) && $search['category'] != '') {
            $qb->andWhere('c.category = :category')
                ->setParameter('category', $search['category']);
        }
        
        
        $query = $qb->getQuery();
        $result = $query->getResult();
        if(!$result) {
            return [];
        }
        
        return $result;
    }
//    /**
//     * @return Car[] Returns an array of Car objects
//     */
//    public function findByExampleField($value): array
//    {
//        return $this->createQueryBuilder('c')
//            ->andWhere('c.exampleField = :val')
//            ->setParameter('val', $value)
//            ->orderBy('c.id', 'ASC')
//            ->setMaxResults(10)
//            ->getQuery()
//            ->getResult()
//        ;
//    }

//    public function findOneBySomeField($value): ?Car
//    {
//        return $this->createQueryBuilder('c')
//            ->andWhere('c.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
